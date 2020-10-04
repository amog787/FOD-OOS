.class Lcom/android/server/firewall/NotFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "NotFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/NotFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "child":Lcom/android/server/firewall/Filter;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 47
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v2

    .line 49
    .local v2, "filter":Lcom/android/server/firewall/Filter;
    if-nez v0, :cond_0

    .line 50
    move-object v0, v2

    .line 55
    .end local v2    # "filter":Lcom/android/server/firewall/Filter;
    goto :goto_0

    .line 52
    .restart local v2    # "filter":Lcom/android/server/firewall/Filter;
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "<not> tag can only contain a single child filter."

    invoke-direct {v4, v5, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 56
    .end local v2    # "filter":Lcom/android/server/firewall/Filter;
    :cond_1
    new-instance v2, Lcom/android/server/firewall/NotFilter;

    invoke-direct {v2, v0, v3}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;Lcom/android/server/firewall/NotFilter$1;)V

    return-object v2
.end method
