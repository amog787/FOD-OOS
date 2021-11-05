.class Lcom/android/server/firewall/IntentFirewall$Rule;
.super Lcom/android/server/firewall/AndFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final ATTR_BLOCK:Ljava/lang/String; = "block"

.field private static final ATTR_LOG:Ljava/lang/String; = "log"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG_COMPONENT_FILTER:Ljava/lang/String; = "component-filter"

.field private static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"


# instance fields
.field private block:Z

.field private log:Z

.field private final mComponentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 416
    invoke-direct {p0}, Lcom/android/server/firewall/AndFilter;-><init>()V

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/firewall/IntentFirewall$1;

    .line 416
    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    return v0
.end method

.method public getComponentFilter(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "index"    # I

    .line 478
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public getComponentFilterCount()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .locals 1
    .param p1, "index"    # I

    .line 470
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object v0
.end method

.method public getIntentFilterCount()I
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLog()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    return v0
.end method

.method protected readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 441
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "currentTag":Ljava/lang/String;
    const-string/jumbo v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-direct {v1, p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 445
    .local v1, "intentFilter":Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    invoke-virtual {v1, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 446
    iget-object v2, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v1    # "intentFilter":Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    goto :goto_0

    :cond_0
    const-string v1, "component-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "componentStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 454
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 455
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 459
    iget-object v3, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "componentStr":Ljava/lang/String;
    goto :goto_0

    .line 456
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentStr":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Component name must be specified."

    invoke-direct {v3, v4, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 461
    .end local v2    # "componentStr":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/firewall/AndFilter;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 463
    :goto_0
    return-void
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p1

    return-object p1
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    const-string v1, "block"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    .line 433
    const-string/jumbo v1, "log"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    .line 435
    invoke-super {p0, p1}, Lcom/android/server/firewall/AndFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    .line 436
    return-object p0
.end method
