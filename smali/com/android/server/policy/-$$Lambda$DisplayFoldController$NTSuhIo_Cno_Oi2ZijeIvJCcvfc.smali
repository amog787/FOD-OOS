.class public final synthetic Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->lambda$requestDeviceFolded$0$DisplayFoldController(Z)V

    return-void
.end method
