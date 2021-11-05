.class Lcom/android/server/pm/PackageInstallerSession$6;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$addedFiles:Ljava/util/List;

.field final synthetic val$dataLoaderManager:Landroid/content/pm/DataLoaderManager;

.field final synthetic val$manualStartAndDestroy:Z

.field final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field final synthetic val$removedFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/DataLoaderManager;ZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 2813
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$dataLoaderManager:Landroid/content/pm/DataLoaderManager;

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(II)V
    .locals 5
    .param p1, "dataLoaderId"    # I
    .param p2, "status"    # I

    .line 2816
    if-eqz p2, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    .line 2822
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1300(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2832
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$dataLoaderManager:Landroid/content/pm/DataLoaderManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    .line 2833
    .local v0, "dataLoader":Landroid/content/pm/IDataLoader;
    const/16 v1, -0x14

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2834
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1302(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 2835
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "Failure to obtain data loader"

    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 2837
    return-void

    .line 2840
    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2894
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1302(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 2895
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "DataLoader reported unrecoverable failure."

    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2890
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v2, "DataLoader unavailable"

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1900(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 2891
    goto/16 :goto_1

    .line 2880
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1302(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 2881
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v3, "Failed to prepare image."

    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 2883
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_3

    .line 2884
    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto/16 :goto_1

    .line 2867
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1302(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 2868
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2869
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1700(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2870
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v2

    .line 2869
    invoke-interface {v1, v2}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 2870
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1800(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_0

    .line 2872
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1800(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2874
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_3

    .line 2875
    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto :goto_1

    .line 2859
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 2862
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/InstallationFileParcel;

    .line 2861
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/InstallationFileParcel;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    .line 2863
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2859
    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    .line 2864
    goto :goto_1

    .line 2851
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_3

    .line 2854
    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    goto :goto_1

    .line 2842
    :pswitch_7
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz v1, :cond_3

    .line 2843
    new-instance v1, Landroid/content/pm/FileSystemControlParcel;

    invoke-direct {v1}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    .line 2844
    .local v1, "control":Landroid/content/pm/FileSystemControlParcel;
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    iput-object v2, v1, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    .line 2845
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    .end local v0    # "dataLoader":Landroid/content/pm/IDataLoader;
    .end local v1    # "control":Landroid/content/pm/FileSystemControlParcel;
    :cond_3
    :goto_1
    goto :goto_2

    .line 2899
    :catch_0
    move-exception v0

    .line 2902
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1900(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 2904
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 2823
    :cond_4
    :goto_3
    const/16 v0, 0x8

    if-eq p2, v0, :cond_5

    .line 2828
    return-void

    .line 2825
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1400(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2826
    return-void

    .line 2819
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
