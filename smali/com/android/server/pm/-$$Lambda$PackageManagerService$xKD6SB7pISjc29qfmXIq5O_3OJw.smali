.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$Producer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/pm/Installer;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$1:Lcom/android/server/pm/Installer;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$2:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$3:Z

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$1:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$2:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$3:Z

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$xKD6SB7pISjc29qfmXIq5O_3OJw;->f$4:Ljava/lang/Object;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->lambda$main$2(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLjava/lang/Object;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    return-object p1
.end method
