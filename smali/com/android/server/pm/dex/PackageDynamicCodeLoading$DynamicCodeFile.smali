.class Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
.super Ljava/lang/Object;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicCodeFile"
.end annotation


# instance fields
.field final mFileType:C

.field final mLoadingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method private varargs constructor <init>(CI[Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # C
    .param p2, "user"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-char p1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    .line 619
    iput p2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 620
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    .line 621
    return-void
.end method

.method synthetic constructor <init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V
    .locals 0
    .param p1, "x0"    # C
    .param p2, "x1"    # I
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;

    .line 612
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iget-char v0, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    iput-char v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    .line 625
    iget v0, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    iput v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 626
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    .line 627
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .param p2, "x1"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;)V

    return-void
.end method
