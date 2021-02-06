.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/security/KeyStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Landroid/security/KeyStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;->f$0:Lcom/android/server/connectivity/Vpn;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;->f$2:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;->f$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;->f$2:Landroid/security/KeyStore;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->lambda$deleteVpnProfile$3$Vpn(Ljava/lang/String;Landroid/security/KeyStore;)V

    return-void
.end method
