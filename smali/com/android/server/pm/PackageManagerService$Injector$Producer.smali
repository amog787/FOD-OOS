.class interface abstract Lcom/android/server/pm/PackageManagerService$Injector$Producer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Producer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$Injector;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")TT;"
        }
    .end annotation
.end method
