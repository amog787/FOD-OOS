.class public Lcom/android/server/pm/ModuleInfoProvider;
.super Ljava/lang/Object;
.source "ModuleInfoProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final MODULE_METADATA_KEY:Ljava/lang/String; = "android.content.pm.MODULE_METADATA"

.field private static final TAG:Ljava/lang/String; = "PackageManager.ModuleInfoProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mMetadataLoaded:Z

.field private final mModuleInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private volatile mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "metadata"    # Landroid/content/res/XmlResourceParser;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 78
    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    .line 81
    return-void
.end method

.method private loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "packageResources"    # Landroid/content/res/Resources;

    .line 125
    const-string v0, "PackageManager.ModuleInfoProvider"

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "module-metadata"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 128
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 129
    goto :goto_1

    .line 132
    :cond_0
    const-string/jumbo v2, "module"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected metadata element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 160
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    .line 162
    goto :goto_2

    .line 143
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v3, "name"

    .line 144
    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 145
    .local v2, "moduleName":Ljava/lang/CharSequence;
    const-string/jumbo v3, "packageName"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "modulePackageName":Ljava/lang/String;
    const-string v4, "isHidden"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 149
    .local v4, "isHidden":Z
    new-instance v5, Landroid/content/pm/ModuleInfo;

    invoke-direct {v5}, Landroid/content/pm/ModuleInfo;-><init>()V

    .line 150
    .local v5, "mi":Landroid/content/pm/ModuleInfo;
    invoke-virtual {v5, v4}, Landroid/content/pm/ModuleInfo;->setHidden(Z)Landroid/content/pm/ModuleInfo;

    .line 151
    invoke-virtual {v5, v3}, Landroid/content/pm/ModuleInfo;->setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;

    .line 152
    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;

    .line 154
    iget-object v6, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    nop

    .end local v2    # "moduleName":Ljava/lang/CharSequence;
    .end local v3    # "modulePackageName":Ljava/lang/String;
    .end local v4    # "isHidden":Z
    .end local v5    # "mi":Landroid/content/pm/ModuleInfo;
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Error parsing module metadata"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 163
    :goto_2
    return-void

    .line 160
    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    throw v0
.end method


# virtual methods
.method getInstalledModules(I)Ljava/util/List;
    .locals 6
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_3

    .line 175
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v1, "installedModules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ModuleInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 190
    .local v3, "p":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ModuleInfo;

    .line 191
    .local v4, "m":Landroid/content/pm/ModuleInfo;
    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v4    # "m":Landroid/content/pm/ModuleInfo;
    :cond_1
    goto :goto_0

    .line 195
    :cond_2
    return-object v1

    .line 183
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "installedModules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ModuleInfo;>;"
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager.ModuleInfoProvider"

    const-string v2, "Unable to retrieve all package names"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getInstalledModules before metadata loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 199
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ModuleInfo;

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getModuleInfo before metadata loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getVersion before metadata loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PackageManager.ModuleInfoProvider"

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "No configured module metadata provider."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 98
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 99
    .local v2, "packageContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "packageContext":Landroid/content/Context;
    .local v1, "packageResources":Landroid/content/res/Resources;
    nop

    .line 105
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 106
    const-string v3, "android.content.pm.MODULE_METADATA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 107
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    .line 108
    return-void

    .line 100
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/util/AndroidException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to discover metadata package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-void
.end method
