.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .line 540
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceActor(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "realUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 894
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    if-eqz v0, :cond_0

    .line 899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 900
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$800(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;

    move-result-object v2

    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/android/server/om/OverlayActorEnforcer;->enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V

    .line 901
    return-void

    .line 895
    .end local v1    # "callingUid":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve overlay information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 877
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 877
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 794
    new-instance v0, Lcom/android/server/om/DumpState;

    invoke-direct {v0}, Lcom/android/server/om/DumpState;-><init>()V

    .line 795
    .local v0, "dumpState":Lcom/android/server/om/DumpState;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "opti":I
    :goto_0
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_5

    .line 799
    aget-object v3, p3, v2

    .line 800
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_0

    .line 801
    goto/16 :goto_2

    .line 803
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 805
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 806
    const-string v1, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    const-string v1, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    const-string v1, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    const-string v1, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v1, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string v1, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    const-string v1, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    return-void

    .line 814
    :cond_1
    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 815
    array-length v4, p3

    if-lt v2, v4, :cond_2

    .line 816
    const-string v1, "Error: user missing argument"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    return-void

    .line 820
    :cond_2
    :try_start_0
    aget-object v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    add-int/lit8 v2, v2, 0x1

    .line 825
    goto :goto_1

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: user argument is not a number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    return-void

    .line 826
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v4, "--verbose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 827
    invoke-virtual {v0, v5}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_1

    .line 829
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    .end local v3    # "opt":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 832
    :cond_5
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_7

    .line 833
    aget-object v3, p3, v2

    .line 834
    .local v3, "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 835
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_6
    goto/16 :goto_3

    :sswitch_0
    const-string v4, "basecodepath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v5, "packagename"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_3

    :sswitch_2
    const-string/jumbo v4, "isenabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_3
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_4
    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v1, 0x9

    goto :goto_3

    :sswitch_5
    const-string/jumbo v4, "ismutable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_6
    const-string/jumbo v4, "userid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v5

    goto :goto_3

    :sswitch_7
    const-string/jumbo v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_8
    const-string/jumbo v4, "targetpackagename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_9
    const-string/jumbo v4, "targetoverlayablename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x3

    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 849
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    goto :goto_4

    .line 846
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 853
    .end local v3    # "arg":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    array-length v1, p3

    if-ge v2, v1, :cond_8

    .line 854
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    .line 855
    add-int/lit8 v2, v2, 0x1

    .line 858
    :cond_8
    const-string v1, "dump"

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 860
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 861
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 862
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 864
    :cond_9
    monitor-exit v1

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x685a1e7c -> :sswitch_9
        -0x4a674a60 -> :sswitch_8
        -0x4577865c -> :sswitch_7
        -0x31d4cdda -> :sswitch_6
        -0x3188d944 -> :sswitch_5
        0x302bcfe -> :sswitch_4
        0x68ac491 -> :sswitch_3
        0x1a483ad7 -> :sswitch_2
        0x36391bd1 -> :sswitch_1
        0x64f6f963 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .locals 5
    .param p1, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 544
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 545
    const-string v2, "getAllOverlays"

    invoke-direct {p0, p1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 547
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 548
    return-object v4

    .line 549
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 551
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "userIdArg":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 552
    throw v2
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 6

    .line 748
    const-wide/32 v0, 0x4000000

    :try_start_0
    const-string v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 754
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 755
    :try_start_2
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 758
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 761
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 755
    return-object v5

    .line 756
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 758
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 759
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 761
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 762
    throw v2
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 577
    if-nez p1, :cond_0

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 583
    const-string v2, "getOverlayInfo"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 585
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 586
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 586
    return-object v4

    .line 587
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 589
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 590
    throw v2
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 558
    if-nez p1, :cond_0

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 563
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 564
    const-string v2, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 566
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 567
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 567
    return-object v4

    .line 568
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "targetPackageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "targetPackageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 571
    throw v2
.end method

.method public invalidateCachesForOverlay(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 767
    if-nez p1, :cond_0

    .line 768
    return-void

    .line 771
    :cond_0
    const-string/jumbo v0, "invalidateCachesForOverlay"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v0

    .line 772
    .local v0, "realUserId":I
    const-string/jumbo v1, "invalidateCachesForOverlay"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 775
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 776
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Ljava/lang/String;I)V

    .line 777
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    nop

    .line 781
    return-void

    .line 777
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "realUserId":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 779
    .restart local v0    # "realUserId":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    throw v3
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 788
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 790
    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 596
    if-nez p1, :cond_0

    .line 597
    const/4 v0, 0x0

    return v0

    .line 601
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 602
    const-string/jumbo v2, "setEnabled"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 603
    .local v2, "realUserId":I
    const-string/jumbo v3, "setEnabled"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 607
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 608
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 614
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 608
    return v6

    .line 609
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 611
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 614
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 615
    throw v2
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 621
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 627
    const-string/jumbo v3, "setEnabledExclusive"

    invoke-direct {p0, p3, v3}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v3

    .line 628
    .local v3, "realUserId":I
    const-string/jumbo v4, "setEnabledExclusive"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 632
    .local v4, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 633
    :try_start_2
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 640
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    return v0

    .line 635
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "realUserId":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 637
    .restart local v3    # "realUserId":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 640
    .end local v3    # "realUserId":I
    .end local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 641
    throw v0

    .line 622
    :cond_1
    :goto_0
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 647
    if-nez p1, :cond_0

    .line 648
    const/4 v0, 0x0

    return v0

    .line 652
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 653
    const-string/jumbo v2, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 655
    .local v2, "realUserId":I
    const-string/jumbo v3, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 657
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 659
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 667
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    return v6

    .line 662
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 664
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 667
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 668
    throw v2
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 699
    if-nez p1, :cond_0

    .line 700
    const/4 v0, 0x0

    return v0

    .line 704
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setHighestPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 705
    const-string/jumbo v2, "setHighestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 706
    .local v2, "realUserId":I
    const-string/jumbo v3, "setHighestPriority"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 710
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 711
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 717
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 711
    return v6

    .line 712
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 714
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 717
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 718
    throw v2
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 723
    if-nez p1, :cond_0

    .line 724
    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setLowestPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 729
    const-string/jumbo v2, "setLowestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 730
    .local v2, "realUserId":I
    const-string/jumbo v3, "setLowestPriority"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 734
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 735
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    return v6

    .line 736
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 738
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 741
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    throw v2
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parentPackageName"    # Ljava/lang/String;
    .param p3, "userIdArg"    # I

    .line 674
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 681
    const-string/jumbo v2, "setPriority"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 682
    .local v2, "realUserId":I
    const-string/jumbo v3, "setPriority"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 686
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 690
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 693
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 687
    return v6

    .line 688
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 690
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 693
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 694
    throw v2

    .line 675
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
