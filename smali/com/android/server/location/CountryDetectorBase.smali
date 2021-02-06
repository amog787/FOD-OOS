.class public abstract Lcom/android/server/location/CountryDetectorBase;
.super Ljava/lang/Object;
.source "CountryDetectorBase.java"


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDetectedCountry:Landroid/location/Country;

.field protected final mHandler:Landroid/os/Handler;

.field protected mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "CountryDetector"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public abstract detectCountry()Landroid/location/Country;
.end method

.method protected notifyListener(Landroid/location/Country;)V
    .locals 1
    .param p1, "country"    # Landroid/location/Country;

    .line 70
    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/CountryListener;

    .line 60
    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 61
    return-void
.end method

.method public abstract stop()V
.end method
