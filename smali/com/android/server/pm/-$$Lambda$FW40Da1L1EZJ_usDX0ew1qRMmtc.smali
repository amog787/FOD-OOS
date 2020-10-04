.class public final synthetic Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;

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

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestVisible()Z

    move-result p1

    return p1
.end method
