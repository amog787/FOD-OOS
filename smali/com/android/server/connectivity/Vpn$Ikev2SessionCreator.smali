.class public Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ikev2SessionCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIkeSession(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Landroid/net/ipsec/ike/IkeSession;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "firstChildSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p6, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 3129
    new-instance v7, Landroid/net/ipsec/ike/IkeSession;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    return-object v7
.end method
