.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:J

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JILandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$2:J

    iput p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$3:I

    iput-object p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$4:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$2:J

    iget v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$3:I

    iget-object v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gqdNHYJiYM0w_nIH0nGMWWU8yzQ;->f$4:Landroid/content/IntentSender;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$freeStorage$2$PackageManagerService(Ljava/lang/String;JILandroid/content/IntentSender;)V

    return-void
.end method
