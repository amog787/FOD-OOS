.class Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "TT;>;)V"
        }
    .end annotation

    .line 962
    .local p0, "this":Lcom/android/server/pm/PackageManagerService$Injector$Singleton;, "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<TT;>;"
    .local p1, "producer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->mInstance:Ljava/lang/Object;

    .line 963
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    .line 964
    return-void
.end method


# virtual methods
.method get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 1
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p2, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$Injector;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")TT;"
        }
    .end annotation

    .line 966
    .local p0, "this":Lcom/android/server/pm/PackageManagerService$Injector$Singleton;, "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<TT;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService$Injector$Producer;->produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->mInstance:Ljava/lang/Object;

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->mInstance:Ljava/lang/Object;

    return-object v0
.end method
