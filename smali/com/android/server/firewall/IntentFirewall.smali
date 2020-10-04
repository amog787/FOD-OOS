.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallHandler;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$Rule;
    }
.end annotation


# static fields
.field private static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field private static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field private static final RULES_DIR:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "IntentFirewall"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TAG_RULES:Ljava/lang/String; = "rules"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TYPE_ACTIVITY:I = 0x0

.field private static final TYPE_BROADCAST:I = 0x1

.field private static final TYPE_SERVICE:I = 0x2

.field private static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field private final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field private mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field private final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field private mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 80
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/server/firewall/FilterFactory;

    sget-object v1, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0x9

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0xa

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0xb

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v4, 0xc

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0xd

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0xe

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0xf

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0x10

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v4, 0x11

    aput-object v1, v0, v4

    .line 104
    .local v0, "factories":[Lcom/android/server/firewall/FilterFactory;
    new-instance v1, Ljava/util/HashMap;

    array-length v4, v0

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 106
    aget-object v2, v0, v1

    .line 107
    .local v2, "factory":Lcom/android/server/firewall/FilterFactory;
    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v2    # "factory":Lcom/android/server/firewall/FilterFactory;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "factories":[Lcom/android/server/firewall/FilterFactory;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/firewall/IntentFirewall$AMSInterface;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 76
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 77
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 112
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    .line 113
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 114
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, "rulesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 119
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    .line 120
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-virtual {v1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->startWatching()V

    .line 121
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/firewall/IntentFirewall;
    .param p1, "x1"    # Ljava/io/File;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .locals 1

    .line 254
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method private static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "packages"    # [Ljava/lang/String;

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "first":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    const/16 v4, 0x96

    if-ge v2, v3, :cond_3

    .line 229
    aget-object v3, p0, v2

    .line 233
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_1

    .line 234
    if-nez v0, :cond_0

    .line 235
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 240
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x7d

    if-lt v4, v5, :cond_2

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 228
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    array-length v2, p0

    if-lez v2, :cond_4

    .line 245
    const/4 v2, 0x0

    aget-object v2, p0, v2

    .line 248
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 250
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .locals 15
    .param p0, "intentType"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 188
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 189
    .local v0, "shortComponent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 189
    :cond_0
    move-object v11, v0

    .line 193
    .end local v0    # "shortComponent":Ljava/lang/String;
    .local v11, "shortComponent":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 194
    .local v2, "callerPackages":Ljava/lang/String;
    const/4 v3, 0x0

    .line 195
    .local v3, "callerPackageCount":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 196
    .local v12, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v12, :cond_2

    .line 198
    move/from16 v13, p2

    :try_start_0
    invoke-interface {v12, v13}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "callerPackagesArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 200
    array-length v4, v0

    move v3, v4

    .line 201
    invoke-static {v0}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 205
    .end local v0    # "callerPackagesArray":[Ljava/lang/String;
    :cond_1
    move-object v14, v2

    move v0, v3

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "IntentFirewall"

    const-string v5, "Remote exception while retrieving packages"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v2

    move v0, v3

    goto :goto_1

    .line 196
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    move/from16 v13, p2

    move-object v14, v2

    move v0, v3

    .line 208
    .end local v2    # "callerPackages":Ljava/lang/String;
    .end local v3    # "callerPackageCount":I
    .local v0, "callerPackageCount":I
    .local v14, "callerPackages":Ljava/lang/String;
    :goto_1
    nop

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 208
    move v2, p0

    move-object v3, v11

    move/from16 v4, p2

    move v5, v0

    move-object v6, v14

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v10}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "elementName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    .line 389
    .local v1, "factory":Lcom/android/server/firewall/FilterFactory;
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v2

    return-object v2

    .line 390
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element in filter list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .locals 16
    .param p1, "rulesFile"    # Ljava/io/File;
    .param p2, "resolvers"    # [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 302
    move-object/from16 v1, p1

    const-string v2, "Error reading intent firewall rules from "

    const-string v3, "Error while closing "

    const-string v4, "IntentFirewall"

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 303
    .local v6, "rulesByType":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 304
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v5, v0

    .line 313
    .local v5, "fis":Ljava/io/FileInputStream;
    nop

    .line 316
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 318
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v0, "rules"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 322
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v9, v0

    .line 323
    .local v9, "outerDepth":I
    :goto_1
    invoke-static {v7, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    const/4 v0, -0x1

    .line 326
    .local v0, "ruleType":I
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "activity"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 328
    const/4 v0, 0x0

    move v11, v0

    goto :goto_2

    .line 329
    :cond_1
    const-string v11, "broadcast"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 330
    const/4 v0, 0x1

    move v11, v0

    goto :goto_2

    .line 331
    :cond_2
    const-string/jumbo v11, "service"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 332
    const/4 v0, 0x2

    move v11, v0

    goto :goto_2

    .line 331
    :cond_3
    move v11, v0

    .line 335
    .end local v0    # "ruleType":I
    .local v11, "ruleType":I
    :goto_2
    const/4 v0, -0x1

    if-eq v11, v0, :cond_4

    .line 336
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-direct {v0, v8}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    move-object v12, v0

    .line 338
    .local v12, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v0

    .line 343
    .local v13, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :try_start_2
    invoke-virtual {v12, v7}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    nop

    .line 349
    :try_start_3
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 344
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 345
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading an intent firewall rule from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    goto :goto_1

    .line 351
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "ruleType":I
    .end local v12    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :cond_4
    :goto_3
    goto :goto_1

    .line 362
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "outerDepth":I
    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 365
    goto :goto_4

    .line 363
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 364
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0    # "ex":Ljava/io/IOException;
    nop

    .line 368
    :goto_4
    const/4 v0, 0x0

    .local v0, "ruleType":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 369
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 370
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    aget-object v3, p2, v0

    .line 372
    .local v3, "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    const/4 v4, 0x0

    .local v4, "ruleIndex":I
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 373
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 374
    .local v7, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    invoke-virtual {v7}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 375
    invoke-virtual {v7, v8}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 374
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 377
    .end local v8    # "i":I
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    invoke-virtual {v7}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 378
    invoke-virtual {v7, v8}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v3, v9, v7}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 377
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 372
    .end local v7    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v8    # "i":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 368
    .end local v2    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    .end local v3    # "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .end local v4    # "ruleIndex":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 382
    .end local v0    # "ruleType":I
    :cond_9
    return-void

    .line 361
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 357
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 358
    .local v7, "ex":Ljava/io/IOException;
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 362
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 365
    goto :goto_9

    .line 363
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 364
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_9
    return-void

    .line 352
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v0

    move-object v7, v0

    .line 355
    .local v7, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 362
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 365
    goto :goto_a

    .line 363
    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 364
    .restart local v0    # "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_a
    return-void

    .line 362
    .end local v7    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 365
    goto :goto_c

    .line 363
    :catch_6
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 364
    .restart local v0    # "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_c
    throw v2

    .line 310
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    .line 312
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private readRulesDir(Ljava/io/File;)V
    .locals 7
    .param p1, "rulesDir"    # Ljava/io/File;

    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 269
    .local v0, "resolvers":[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 270
    new-instance v2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    aput-object v2, v0, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 274
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 276
    aget-object v3, v1, v2

    .line 278
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    invoke-direct {p0, v3, v0}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    .line 275
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read new rules (A:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " B:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v5, v0, v4

    .line 285
    invoke-virtual {v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " S:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v6, v0, v5

    .line 286
    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    const-string v6, "IntentFirewall"

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {v2}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 289
    :try_start_0
    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 290
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 291
    aget-object v3, v0, v5

    iput-object v3, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 292
    monitor-exit v2

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "receivingUid"    # I

    .line 141
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    .line 598
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .locals 18
    .param p1, "resolver"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intentType"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "callerUid"    # I
    .param p6, "callerPid"    # I
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "receivingUid"    # I

    .line 148
    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    const/4 v1, 0x0

    .line 149
    .local v1, "log":Z
    const/4 v2, 0x0

    .line 154
    .local v2, "block":Z
    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11, v11}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    if-nez v3, :cond_0

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    move-object v12, v3

    goto :goto_0

    .line 155
    :cond_0
    move-object v12, v3

    .line 158
    .end local v3    # "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    .local v12, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :goto_0
    move-object/from16 v13, p2

    invoke-virtual {v0, v13, v12}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 162
    const/4 v3, 0x0

    move/from16 v16, v1

    move v15, v2

    move v14, v3

    .end local v1    # "log":Z
    .end local v2    # "block":Z
    .local v14, "i":I
    .local v15, "block":Z
    .local v16, "log":Z
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_2

    .line 163
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 164
    .local v17, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/firewall/IntentFirewall$Rule;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v1

    or-int/2addr v15, v1

    .line 167
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v1

    or-int v16, v16, v1

    .line 171
    if-eqz v15, :cond_1

    if-eqz v16, :cond_1

    .line 172
    goto :goto_2

    .line 162
    .end local v17    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 177
    .end local v14    # "i":I
    :cond_2
    :goto_2
    if-eqz v16, :cond_3

    .line 178
    move/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v1, v9, v2, v10}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    goto :goto_3

    .line 177
    :cond_3
    move/from16 v1, p3

    move/from16 v2, p5

    .line 181
    :goto_3
    if-nez v15, :cond_4

    const/4 v11, 0x1

    :cond_4
    return v11
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p1, "resolvedService"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .line 135
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .line 129
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method signaturesMatch(II)Z
    .locals 4
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 604
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 605
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 606
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 607
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "IntentFirewall"

    const-string v3, "Remote exception while checking signatures"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    return v0
.end method
