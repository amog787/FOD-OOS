.class Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemServiceProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mProducingClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 950
    .local p0, "this":Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer;, "Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer;->mProducingClass:Ljava/lang/Class;

    .line 952
    return-void
.end method


# virtual methods
.method public produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 2
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p2, "packageManager"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$Injector;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")TT;"
        }
    .end annotation

    .line 954
    .local p0, "this":Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer;, "Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer<TT;>;"
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer;->mProducingClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
