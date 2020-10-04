.class Landroid/net/NetworkStackClient$NetworkStackConnection;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStackConnection"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/NetworkStackClient;


# direct methods
.method private constructor <init>(Landroid/net/NetworkStackClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->mContext:Landroid/content/Context;

    .line 206
    iput-object p3, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->mPackageName:Ljava/lang/String;

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/NetworkStackClient;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkStackClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/NetworkStackClient;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/net/NetworkStackClient$1;

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 211
    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    const-string v1, "Network stack service connected"

    invoke-static {v0, v1}, Landroid/net/NetworkStackClient;->access$000(Landroid/net/NetworkStackClient;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-static {v0, p2}, Landroid/net/NetworkStackClient;->access$100(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V

    .line 213
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 222
    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    iget-object v1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->mPackageName:Ljava/lang/String;

    const-string v3, "Lost network stack"

    invoke-static {v0, v3, v1, v2}, Landroid/net/NetworkStackClient;->access$200(Landroid/net/NetworkStackClient;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    return-void
.end method
