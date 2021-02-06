.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$2afaFERxNQEnSdevJxY5plp1fS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$2afaFERxNQEnSdevJxY5plp1fS4;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$2afaFERxNQEnSdevJxY5plp1fS4;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$2afaFERxNQEnSdevJxY5plp1fS4;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$2afaFERxNQEnSdevJxY5plp1fS4;->f$1:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->lambda$handleAppDiedLocked$0$ActivityManagerService(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
