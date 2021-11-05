.class final Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextClassifierServiceConnection"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;


# direct methods
.method constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 955
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->mUserId:I

    .line 957
    return-void
.end method

.method private init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 995
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iput-object p1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 997
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    .line 998
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->mUserId:I

    invoke-static {v1, v2, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$2100(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILandroid/content/ComponentName;)V

    .line 999
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$2200(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    .line 1000
    monitor-exit v0

    .line 1001
    return-void

    .line 1000
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method cleanupService()V
    .locals 1

    .line 990
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V

    .line 991
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    .line 981
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    .line 987
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 961
    invoke-static {p2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;

    move-result-object v0

    .line 964
    .local v0, "tcService":Landroid/service/textclassifier/ITextClassifierService;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/service/textclassifier/ITextClassifierService;->onConnectedStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    goto :goto_0

    .line 965
    :catch_0
    move-exception v1

    .line 966
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextClassificationManagerService"

    const-string v3, "error in onConnectedStateChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V

    .line 969
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    .line 975
    return-void
.end method
