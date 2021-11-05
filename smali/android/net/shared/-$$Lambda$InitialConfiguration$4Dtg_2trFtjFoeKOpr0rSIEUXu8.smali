.class public final synthetic Landroid/net/shared/-$$Lambda$InitialConfiguration$4Dtg_2trFtjFoeKOpr0rSIEUXu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/IpPrefix;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpPrefix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/-$$Lambda$InitialConfiguration$4Dtg_2trFtjFoeKOpr0rSIEUXu8;->f$0:Landroid/net/IpPrefix;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/shared/-$$Lambda$InitialConfiguration$4Dtg_2trFtjFoeKOpr0rSIEUXu8;->f$0:Landroid/net/IpPrefix;

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result p1

    return p1
.end method
