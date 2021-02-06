.class final Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;
.super Ljava/lang/Object;
.source "TaskSnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final snapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field final topApp:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .param p2, "topApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->snapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 142
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 143
    return-void
.end method
