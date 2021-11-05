.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;

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

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$5(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
