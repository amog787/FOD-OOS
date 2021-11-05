.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;->f$0:Lcom/android/server/wm/ActivityStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;->f$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->lambda$dismissPip$12$ActivityStack()V

    return-void
.end method
