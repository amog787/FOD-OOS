.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wnf5zZuMJLUQ4GfjHtUww4l7YUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$Producer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wnf5zZuMJLUQ4GfjHtUww4l7YUg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wnf5zZuMJLUQ4GfjHtUww4l7YUg;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wnf5zZuMJLUQ4GfjHtUww4l7YUg;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wnf5zZuMJLUQ4GfjHtUww4l7YUg;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wnf5zZuMJLUQ4GfjHtUww4l7YUg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$5(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;

    move-result-object p1

    return-object p1
.end method
