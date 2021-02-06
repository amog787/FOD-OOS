.class final Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p2, "x1"    # Lcom/android/server/textservices/TextServicesManagerService$1;

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;)V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 9

    .line 355
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    move-result v0

    .line 360
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 362
    .local v2, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 365
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 366
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 369
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v1

    return-void

    .line 371
    :cond_1
    if-nez v3, :cond_2

    .line 372
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    move-object v3, v4

    .line 376
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v4, v3, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v5

    .line 381
    .local v5, "change":I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 382
    :cond_3
    iget-object v6, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 383
    invoke-static {v6, v4, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 385
    .local v6, "availSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v6, :cond_4

    if-eqz v6, :cond_5

    .line 386
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 387
    :cond_4
    iget-object v7, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v7, v6, v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 391
    .end local v2    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "change":I
    .end local v6    # "availSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_5
    :goto_0
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
