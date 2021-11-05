.class Lcom/android/server/wm/SnapshotStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SnapshotStartingData.java"


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    iput-object p2, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 35
    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0
.end method
