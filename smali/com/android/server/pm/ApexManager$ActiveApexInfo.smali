.class public Lcom/android/server/pm/ApexManager$ActiveApexInfo;
.super Ljava/lang/Object;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveApexInfo"
.end annotation


# instance fields
.field public final apexDirectory:Ljava/io/File;

.field public final apexModuleName:Ljava/lang/String;

.field public final preInstalledApexPath:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/apex/ApexInfo;)V
    .locals 4
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;

    .line 123
    iget-object v0, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/ApexManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/apex/ApexInfo;
    .param p2, "x1"    # Lcom/android/server/pm/ApexManager$1;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1, "apexDirectory"    # Ljava/io/File;
    .param p2, "preInstalledApexPath"    # Ljava/io/File;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lcom/android/server/pm/ApexManager$1;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "apexModuleName"    # Ljava/lang/String;
    .param p2, "apexDirectory"    # Ljava/io/File;
    .param p3, "preInstalledApexPath"    # Ljava/io/File;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 119
    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 120
    return-void
.end method
