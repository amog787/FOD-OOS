.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    return-void
.end method


# virtual methods
.method public final onPreAssignChildLayers()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$onParentChanged$1$TaskDisplayArea()V

    return-void
.end method
