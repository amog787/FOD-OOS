.class public Lcom/android/server/pm/ShortcutNonPersistentUser;
.super Ljava/lang/Object;
.source "ShortcutNonPersistentUser.java"


# instance fields
.field private final mHostPackageSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/pm/ShortcutService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "userId"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 54
    iput p2, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    .line 55
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 79
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    const-string v0, "Non-persistent: user ID:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 85
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    const-string v0, "  Host packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 97
    :cond_1
    return-void
.end method

.method public getUserId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    return v0
.end method

.method public hasHostPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
