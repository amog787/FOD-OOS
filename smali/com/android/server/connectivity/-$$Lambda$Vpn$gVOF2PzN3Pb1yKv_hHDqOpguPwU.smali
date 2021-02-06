.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;

.field public final synthetic f$1:Landroid/security/KeyStore;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/security/KeyStore;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$0:Lcom/android/server/connectivity/Vpn;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$1:Landroid/security/KeyStore;

    iput-object p3, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$3:[B

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$1:Landroid/security/KeyStore;

    iget-object v2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->lambda$provisionVpnProfile$2$Vpn(Landroid/security/KeyStore;Ljava/lang/String;[B)V

    return-void
.end method
