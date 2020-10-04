.class final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextClassifierServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .param p2, "x1"    # Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    return-void
.end method

.method private init(Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 3
    .param p1, "service"    # Landroid/service/textclassifier/ITextClassifierService;

    .line 587
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    iput-object p1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 589
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    .line 590
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$1300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 591
    monitor-exit v0

    .line 592
    return-void

    .line 591
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

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;)V

    .line 584
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 574
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->cleanupService()V

    .line 575
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 579
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->cleanupService()V

    .line 580
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 564
    invoke-static {p2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;)V

    .line 565
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 569
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->cleanupService()V

    .line 570
    return-void
.end method
