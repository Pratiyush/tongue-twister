# The ads SDK starts WorkManager, whose Room database is created by reflection.
# Without this, R8 strips WorkDatabase_Impl and release builds crash on launch.
-keep class * extends androidx.room.RoomDatabase { <init>(); }
