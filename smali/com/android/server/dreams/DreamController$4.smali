.class Lcom/android/server/dreams/DreamController$4;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController;->onSingleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;

    .line 267
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$4;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$4;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 271
    return-void
.end method
