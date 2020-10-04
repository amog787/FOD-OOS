.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$shouldUseAppThemeSnapshot$4(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
