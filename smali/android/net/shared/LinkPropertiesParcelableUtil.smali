.class public final Landroid/net/shared/LinkPropertiesParcelableUtil;
.super Ljava/lang/Object;
.source "LinkPropertiesParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStableParcelable(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    return-object p0
.end method

.method public static toStableParcelable(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0
    .param p0, "info"    # Landroid/net/ProxyInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    return-object p0
.end method
