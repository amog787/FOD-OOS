.class public final synthetic Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p1

    return p1
.end method
