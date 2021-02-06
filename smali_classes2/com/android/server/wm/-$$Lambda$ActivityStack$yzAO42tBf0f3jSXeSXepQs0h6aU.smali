.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$yzAO42tBf0f3jSXeSXepQs0h6aU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$yzAO42tBf0f3jSXeSXepQs0h6aU;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$yzAO42tBf0f3jSXeSXepQs0h6aU;->f$0:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStack;->lambda$finishIfVoiceTask$4(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
