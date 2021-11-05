.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# instance fields
.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field traceCookie:I

.field traceMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 15031
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15032
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 15033
    return-void
.end method


# virtual methods
.method getRollbackUser()Landroid/os/UserHandle;
    .locals 2

    .line 15047
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v1, :cond_0

    .line 15048
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0

    .line 15050
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 15036
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleStartCopy()V
.end method

.method setTraceCookie(I)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .locals 0
    .param p1, "traceCookie"    # I

    .line 15059
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 15060
    return-object p0
.end method

.method setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .locals 0
    .param p1, "traceMethod"    # Ljava/lang/String;

    .line 15054
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    .line 15055
    return-object p0
.end method

.method final startCopy()V
    .locals 2

    .line 15064
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCopy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15065
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V

    .line 15066
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 15067
    return-void
.end method
