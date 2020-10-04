.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field private final synthetic f$1:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;->f$1:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;->f$1:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$2$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method
