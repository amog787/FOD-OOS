.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$1$TaskSnapshotController(Lcom/android/server/wm/Task;)V

    return-void
.end method
