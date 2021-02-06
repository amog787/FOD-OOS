.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$imyTLGZ0HLyacORSu0iPTteivzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$Producer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$imyTLGZ0HLyacORSu0iPTteivzY;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$imyTLGZ0HLyacORSu0iPTteivzY;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$0(Ljava/lang/Object;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComponentResolver;

    move-result-object p1

    return-object p1
.end method
