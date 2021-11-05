.class public abstract Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.super Ljava/lang/Object;
.source "PackageSharedLibraryUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p2, "apacheHttpLegacy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 59
    .local p0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 59
    :goto_1
    return v0
.end method

.method static prefix(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 50
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    return-object p0
.end method

.method static removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 1
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 44
    invoke-interface {p0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 45
    invoke-interface {v0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 46
    return-void
.end method


# virtual methods
.method prefixImplicitDependency(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "existingLibrary"    # Ljava/lang/String;
    .param p3, "implicitDependency"    # Ljava/lang/String;

    .line 75
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {p1, v3, p3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {p1, v3, p3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 4
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    .line 93
    .local v2, "alreadyPresent":Z
    if-nez v2, :cond_0

    .line 94
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 96
    :cond_0
    return-void
.end method

.method public abstract updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
.end method
