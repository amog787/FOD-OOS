.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/os/DropBoxManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;->f$0:Landroid/os/DropBoxManager;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;->f$0:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$30I5N5ZS7997YvRBJqVkTZMPd6M;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->lambda$logStrictModeViolationToDropBox$2(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
