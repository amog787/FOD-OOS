.class public final Lcom/android/server/utils/FlagNamespaceUtils;
.super Ljava/lang/Object;
.source "FlagNamespaceUtils.java"


# static fields
.field public static final ALL_KNOWN_NAMESPACES_FLAG:Ljava/lang/String; = "all_known_namespaces"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final MAX_COUNTER_VALUE:I = 0x32

.field public static final NAMESPACE_NO_PACKAGE:Ljava/lang/String; = "no_package"

.field public static final NAMESPACE_RESCUE_PARTY:Ljava/lang/String; = "rescue_party_namespace"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESET_PLATFORM_PACKAGE_FLAG:Ljava/lang/String; = "reset_platform_package"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sKnownResetNamespacesFlagCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToKnownResetNamespaces(Ljava/lang/String;)V
    .locals 4
    .param p0, "namespace"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/android/server/utils/FlagNamespaceUtils;->incrementAndRetrieveResetNamespacesFlagCounter()I

    move-result v0

    .line 95
    .local v0, "nextFlagCounter":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset_platform_package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rescue_party_namespace"

    const/4 v3, 0x1

    invoke-static {v2, v1, p0, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    return-void
.end method

.method public static addToKnownResetNamespaces(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p0, "namespacesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "namespace":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/utils/FlagNamespaceUtils;->addToKnownResetNamespaces(Ljava/lang/String;)V

    .line 84
    .end local v1    # "namespace":Ljava/lang/String;
    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method private static getAllKnownDeviceConfigNamespacesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    const-string/jumbo v0, "rescue_party_namespace"

    const-string v1, "all_known_namespaces"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "namespacesStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/utils/FlagNamespaceUtils;->toStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "namespacesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    return-object v2
.end method

.method private static incrementAndRetrieveResetNamespacesFlagCounter()I
    .locals 2

    .line 145
    sget v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    .line 146
    sget v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    .line 149
    :cond_0
    sget v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    return v0
.end method

.method public static resetDeviceConfig(I)V
    .locals 1
    .param p0, "resetMode"    # I

    .line 104
    invoke-static {}, Lcom/android/server/utils/FlagNamespaceUtils;->getAllKnownDeviceConfigNamespacesList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/utils/FlagNamespaceUtils;->resetDeviceConfig(ILjava/util/List;)V

    .line 105
    return-void
.end method

.method public static resetDeviceConfig(ILjava/util/List;)V
    .locals 2
    .param p0, "resetMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "namespacesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "namespace":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 113
    .end local v1    # "namespace":Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/android/server/utils/FlagNamespaceUtils;->addToKnownResetNamespaces(Ljava/util/List;)V

    .line 115
    return-void
.end method

.method public static resetKnownResetNamespacesFlagCounterForTest()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    const/4 v0, -0x1

    sput v0, Lcom/android/server/utils/FlagNamespaceUtils;->sKnownResetNamespacesFlagCounter:I

    .line 123
    return-void
.end method

.method private static toStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "serialized"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
