.class public abstract Lcom/android/server/firewall/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/android/server/firewall/FilterFactory;->mTag:Ljava/lang/String;

    .line 32
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/server/firewall/FilterFactory;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
