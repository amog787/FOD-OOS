.class Lcom/android/server/firewall/SenderPackageFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderPackageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderPackageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Lcom/android/server/firewall/SenderPackageFilter;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPackageFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "A package name must be specified."

    invoke-direct {v2, v3, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method
