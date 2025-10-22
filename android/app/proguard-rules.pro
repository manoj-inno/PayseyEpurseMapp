# Flutter Proguard Rules

# Keep Flutter wrapper classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep Kotlin specific annotations
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keepattributes RuntimeVisibleAnnotations,RuntimeVisibleParameterAnnotations

# For native methods, see http://proguard.sourceforge.net/manual/examples.html#native
-keepclasseswithmembernames class * {
    native <methods>;
}

# Google Play Core API
-keep class com.google.android.play.core.splitcompat.** { *; }
-keep class com.google.android.play.core.splitinstall.** { *; }
-keep class com.google.android.play.core.common.** { *; }
-keep class com.google.android.play.core.tasks.** { *; }
-keep class com.google.android.play.core.internal.** { *; }
-keep class com.google.android.play.core.appupdate.** { *; }
-keep class com.google.android.play.core.install.** { *; }

# For Firebase
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }

# For MLKit face detection
-keep class com.google.mlkit.vision.** { *; }
-keep class com.google.mlkit.common.** { *; }
-keep class com.google.mlkit.** { *; }

# For Lottie
-keep class com.airbnb.lottie.** { *; }

# For Hive
-keep class hive.** { *; }
-keep class io.hive.** { *; }

# For URL launcher
-keep class com.google.android.gms.common.api.** { *; }

# Models
-keep class * extends com.google.gson.TypeAdapter
-keep class * implements java.io.Serializable { *; }

# Keep Enum values
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep Parcelable classes
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# For encryption libraries
-keep class org.bouncycastle.** { *; }
-keep class net.sqlcipher.** { *; }

# For Flutter Map
-dontwarn org.osmdroid.**
-dontwarn org.apache.commons.**

# For Flutter WebView
-keep class androidx.webkit.** { *; }

# Keep Javascript interface methods
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# For Androidx
-keep class androidx.** { *; }
-keep interface androidx.** { *; }

# For Kotlin coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# General
-dontwarn org.slf4j.**
-dontwarn javax.**