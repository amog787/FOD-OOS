.class final Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnected:Z

.field private final mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

.field private final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mUnbindCalled:Z

.field final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V
    .locals 0
    .param p2, "connection"    # Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 804
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    const-class p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 798
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 799
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 805
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 806
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-direct {p1, p0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 807
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->access$2100(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 808
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 791
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    return-object v0
.end method

.method private cleanLocked()V
    .locals 4

    .line 867
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_0

    .line 868
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 872
    return-void

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 875
    return-void

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 878
    return-void

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->access$2200(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "sciId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 882
    .local v1, "cur":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    if-ne v1, p0, :cond_4

    .line 886
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_4
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/textservices/TextServicesManagerService;->access$2300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 889
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 890
    return-void
.end method

.method static synthetic lambda$removeListener$0(Landroid/os/IBinder;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)Z
    .locals 1
    .param p0, "scListenerBinder"    # Landroid/os/IBinder;
    .param p1, "request"    # Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 855
    iget-object v0, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 904
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_0

    .line 905
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->register(Landroid/os/IInterface;)Z

    .line 908
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    return-void

    .line 913
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v3, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v4, p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 921
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 922
    return-void
.end method

.method public onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .locals 8
    .param p1, "spellChecker"    # Lcom/android/internal/textservice/ISpellCheckerService;

    .line 815
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_0

    .line 816
    return-void

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 823
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 824
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 825
    .local v2, "request":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v4, v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v6, v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v7, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v7, p0, v2}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 828
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    nop

    .end local v2    # "request":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0    # "size":I
    goto :goto_1

    .line 831
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 835
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 836
    return-void
.end method

.method public onServiceDisconnectedLocked()V
    .locals 1

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 845
    return-void
.end method

.method onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "request"    # Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 926
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 927
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v1, :cond_0

    .line 928
    monitor-exit v0

    return-void

    .line 930
    :cond_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 932
    :try_start_1
    iget-object v1, p2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    goto :goto_0

    .line 933
    :catch_0
    move-exception v1

    .line 940
    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 941
    monitor-exit v0

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeAllLocked()V
    .locals 4

    .line 893
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v1, "Remove the spell checker bind unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    .line 895
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 896
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v2, v1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v2, v3}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    .line 895
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 898
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 899
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 900
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 901
    return-void
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 851
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v1, p1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    .line 853
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 854
    .local v1, "scListenerBinder":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$H2umvFNjpgILSC1ZJmUoLxzCdSk;

    invoke-direct {v2, v1}, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$H2umvFNjpgILSC1ZJmUoLxzCdSk;-><init>(Landroid/os/IBinder;)V

    .line 856
    .local v2, "removeCondition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;>;"
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 857
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 858
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 859
    .end local v1    # "scListenerBinder":Landroid/os/IBinder;
    .end local v2    # "removeCondition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;>;"
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
