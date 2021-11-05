.class Lcom/android/server/pm/ApexManager$1;
.super Landroid/util/Singleton;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/server/pm/ApexManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/android/server/pm/ApexManager;
    .locals 2

    .line 84
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-direct {v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;-><init>()V

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;-><init>(Lcom/android/server/pm/ApexManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$1;->create()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    return-object v0
.end method
