.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;->f$0:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;->f$0:Landroid/net/LinkProperties;

    check-cast p1, Ljava/net/InetAddress;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DnsManager;->lambda$setDnsConfigurationForNetwork$0(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method
