.class public interface abstract Lcom/android/server/utils/quota/Categorizer;
.super Ljava/lang/Object;
.source "Categorizer.java"


# static fields
.field public static final SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/android/server/utils/quota/-$$Lambda$Categorizer$7ez64bqBH_7ftnL6e10WcD6kHMA;->INSTANCE:Lcom/android/server/utils/quota/-$$Lambda$Categorizer$7ez64bqBH_7ftnL6e10WcD6kHMA;

    sput-object v0, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    return-void
.end method

.method public static synthetic lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    return-object v0
.end method


# virtual methods
.method public abstract getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
.end method
