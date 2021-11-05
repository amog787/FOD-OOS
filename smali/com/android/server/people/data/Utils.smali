.class Lcom/android/server/people/data/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 35
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 37
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 41
    .end local v2    # "country":Landroid/location/Country;
    :cond_0
    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_1
    return-object v0
.end method
