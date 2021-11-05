.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;->f$0:Lcom/android/server/pm/PackageManagerService$Injector;

    return-void
.end method


# virtual methods
.method public final runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;->f$0:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilter;->lambda$create$0(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    return-void
.end method
