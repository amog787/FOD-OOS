.class Lcom/android/server/connectivity/Vpn$1;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;->agentConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;I)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/content/Context;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Landroid/net/NetworkInfo;
    .param p6, "x4"    # Landroid/net/NetworkCapabilities;
    .param p7, "x5"    # Landroid/net/LinkProperties;
    .param p8, "x6"    # I
    .param p9, "x7"    # Landroid/net/NetworkMisc;
    .param p10, "x8"    # I

    .line 986
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;I)V

    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 0

    .line 990
    return-void
.end method
