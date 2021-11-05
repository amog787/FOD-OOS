.class public final synthetic Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$3:Landroid/content/pm/ParceledListSlice;

    iput-object p5, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$4:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$3:Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;->f$4:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->lambda$updateRuleSet$0$AppIntegrityManagerServiceImpl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    return-void
.end method
