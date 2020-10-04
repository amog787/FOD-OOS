.class final Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mSciId:Ljava/lang/String;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;)V"
        }
    .end annotation

    .line 1000
    .local p3, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 1002
    iput-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 1003
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 995
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 995
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object v0
.end method

.method private onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1016
    nop

    .line 1017
    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v0

    .line 1019
    .local v0, "spellChecker":Lcom/android/internal/textservice/ISpellCheckerService;
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1020
    .local v1, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    move-result-object v2

    if-ne p0, v2, :cond_0

    .line 1021
    invoke-virtual {v1, v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V

    .line 1023
    :cond_0
    return-void
.end method

.method private onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1036
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1037
    .local v0, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1038
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onServiceDisconnectedLocked()V

    .line 1040
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1007
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1008
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1009
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1027
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1028
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V

    .line 1029
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
