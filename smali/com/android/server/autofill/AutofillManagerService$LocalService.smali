.class final Lcom/android/server/autofill/AutofillManagerService$LocalService;
.super Landroid/view/autofill/AutofillManagerInternal;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p2, "x1"    # Lcom/android/server/autofill/AutofillManagerService$1;

    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    return-void
.end method

.method private injectDisableAppInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V
    .locals 2
    .param p1, "options"    # Landroid/content/AutofillOptions;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 866
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1000(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getAppDisabledExpiration(ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 867
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 868
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1000(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getAppDisabledActivities(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 869
    return-void
.end method


# virtual methods
.method public getAutofillOptions(Ljava/lang/String;JI)Landroid/content/AutofillOptions;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I

    .line 836
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 837
    const/4 v0, 0x6

    .local v0, "loggingLevel":I
    goto :goto_0

    .line 839
    .end local v0    # "loggingLevel":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->debug:Z

    if-eqz v0, :cond_1

    .line 840
    const/4 v0, 0x2

    .restart local v0    # "loggingLevel":I
    goto :goto_0

    .line 842
    .end local v0    # "loggingLevel":I
    :cond_1
    const/4 v0, 0x0

    .line 844
    .restart local v0    # "loggingLevel":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->isCompatibilityModeRequested(Ljava/lang/String;JI)Z

    move-result v1

    .line 846
    .local v1, "compatModeEnabled":Z
    new-instance v2, Landroid/content/AutofillOptions;

    invoke-direct {v2, v0, v1}, Landroid/content/AutofillOptions;-><init>(IZ)V

    .line 847
    .local v2, "options":Landroid/content/AutofillOptions;
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-virtual {v3, v2, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    .line 848
    invoke-direct {p0, v2, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;->injectDisableAppInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    .line 849
    return-object v2
.end method

.method public isAugmentedAutofillServiceForUser(II)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 854
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 856
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_0

    .line 857
    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceForUserLocked(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 859
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_0
    monitor-exit v0

    .line 860
    const/4 v0, 0x0

    return v0

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBackKeyPressed()V
    .locals 3

    .line 823
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "onBackKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 825
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 827
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 828
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onBackKeyPressed()V

    .line 829
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    monitor-exit v0

    .line 830
    return-void

    .line 829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
