.class Landroid/net/NetworkFactory$1;
.super Landroid/net/NetworkProvider;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkFactory;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkFactory;


# direct methods
.method constructor <init>(Landroid/net/NetworkFactory;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/NetworkFactory;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/os/Looper;
    .param p4, "arg2"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Landroid/net/NetworkFactory$1;->this$0:Landroid/net/NetworkFactory;

    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 132
    iget-object v0, p0, Landroid/net/NetworkFactory$1;->this$0:Landroid/net/NetworkFactory;

    invoke-virtual {v0, p1}, Landroid/net/NetworkFactory;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    .line 133
    return-void
.end method

.method public onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I
    .param p3, "servingProviderId"    # I

    .line 127
    iget-object v0, p0, Landroid/net/NetworkFactory$1;->this$0:Landroid/net/NetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkFactory;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    .line 128
    return-void
.end method
